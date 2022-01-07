; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_read_magic.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_read_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.line_buffer = type { i32 }

@read_magic.magic = internal constant [4 x i8] c"SVN\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid delta: unrecognized file type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_buffer*, i32*)* @read_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_magic(%struct.line_buffer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.line_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.line_buffer* %0, %struct.line_buffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.line_buffer*, %struct.line_buffer** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @read_chunk(%struct.line_buffer* %8, i32* %9, %struct.strbuf* %6, i32 4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 -1, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @memcmp(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @read_magic.magic, i64 0, i64 0), i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 @strbuf_release(%struct.strbuf* %6)
  %21 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %14
  %23 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_chunk(%struct.line_buffer*, i32*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @error(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
