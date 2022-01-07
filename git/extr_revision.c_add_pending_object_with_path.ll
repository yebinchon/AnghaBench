; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_pending_object_with_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_pending_object_with_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.rev_info = type { i32, i64, i64 }
%struct.object = type { i32, i64 }
%struct.commit = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.object*, i8*, i32, i8*)* @add_pending_object_with_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pending_object_with_path(%struct.rev_info* %0, %struct.object* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store %struct.object* %1, %struct.object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.object*, %struct.object** %7, align 8
  %14 = icmp ne %struct.object* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %95

16:                                               ; preds = %5
  %17 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.object*, %struct.object** %7, align 8
  %23 = getelementptr inbounds %struct.object, %struct.object* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UNINTERESTING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %21, %16
  %32 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %31
  %37 = load %struct.object*, %struct.object** %7, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OBJ_COMMIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %36
  %43 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @interpret_branch_name(i8* %44, i32 0, %struct.strbuf* %11, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 0, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %64)
  br label %66

66:                                               ; preds = %60, %56, %48, %42
  %67 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %68 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.object*, %struct.object** %7, align 8
  %71 = bitcast %struct.object* %70 to %struct.commit*
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  br label %83

81:                                               ; preds = %66
  %82 = load i8*, i8** %8, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i8* [ %80, %78 ], [ %82, %81 ]
  %85 = call i32 @add_reflog_for_walk(i64 %69, %struct.commit* %71, i8* %84)
  %86 = call i32 @strbuf_release(%struct.strbuf* %11)
  br label %95

87:                                               ; preds = %36, %31
  %88 = load %struct.object*, %struct.object** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %91 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %90, i32 0, i32 0
  %92 = load i32, i32* %9, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @add_object_array_with_path(%struct.object* %88, i8* %89, i32* %91, i32 %92, i8* %93)
  br label %95

95:                                               ; preds = %87, %83, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @interpret_branch_name(i8*, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @add_reflog_for_walk(i64, %struct.commit*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @add_object_array_with_path(%struct.object*, i8*, i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
