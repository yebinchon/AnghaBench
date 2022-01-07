; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_have_finished_the_last_pick.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_have_finished_the_last_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unable to open '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @have_finished_the_last_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_finished_the_last_pick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.strbuf, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = call i8* (...) @git_path_todo_file()
  store i8* %7, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strbuf_read_file(%struct.strbuf* %2, i8* %8, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %34

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @error_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %1, align 4
  br label %34

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @strchr(i32 %21, i8 signext 10)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %19
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = call i32 @strbuf_release(%struct.strbuf* %2)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %31, %16, %15
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_path_todo_file(...) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
