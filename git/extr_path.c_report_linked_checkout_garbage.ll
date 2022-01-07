; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_report_linked_checkout_garbage.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_report_linked_checkout_garbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.common_dir = type { i8*, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@common_list = common dso_local global %struct.common_dir* null, align 8
@PACKDIR_FILE_GARBAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_linked_checkout_garbage() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca %struct.common_dir*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_repository, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %51

11:                                               ; preds = %0
  %12 = call i32 (...) @get_git_dir()
  %13 = call i32 @strbuf_addf(%struct.strbuf* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.common_dir*, %struct.common_dir** @common_list, align 8
  store %struct.common_dir* %16, %struct.common_dir** %2, align 8
  br label %17

17:                                               ; preds = %46, %11
  %18 = load %struct.common_dir*, %struct.common_dir** %2, align 8
  %19 = getelementptr inbounds %struct.common_dir, %struct.common_dir* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.common_dir*, %struct.common_dir** %2, align 8
  %24 = getelementptr inbounds %struct.common_dir, %struct.common_dir* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %4, align 8
  %26 = load %struct.common_dir*, %struct.common_dir** %2, align 8
  %27 = getelementptr inbounds %struct.common_dir, %struct.common_dir* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %46

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @strbuf_setlen(%struct.strbuf* %1, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strbuf_addstr(%struct.strbuf* %1, i8* %34)
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @file_exists(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @PACKDIR_FILE_GARBAGE, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @report_garbage(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.common_dir*, %struct.common_dir** %2, align 8
  %48 = getelementptr inbounds %struct.common_dir, %struct.common_dir* %47, i32 1
  store %struct.common_dir* %48, %struct.common_dir** %2, align 8
  br label %17

49:                                               ; preds = %17
  %50 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %51

51:                                               ; preds = %49, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @report_garbage(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
