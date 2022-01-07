; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_show_decorations.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_show_decorations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_decorations(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8**, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = call i8** @revision_sources_peek(i64 %15, %struct.commit* %16)
  store i8** %17, i8*** %6, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %24, %20, %12
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %54

39:                                               ; preds = %33
  %40 = load %struct.commit*, %struct.commit** %4, align 8
  %41 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @format_decorations(%struct.strbuf* %5, %struct.commit* %40, i32 %44)
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @fputs(i32 %47, i32 %51)
  %53 = call i32 @strbuf_release(%struct.strbuf* %5)
  br label %54

54:                                               ; preds = %39, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8** @revision_sources_peek(i64, %struct.commit*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @format_decorations(%struct.strbuf*, %struct.commit*, i32) #2

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
