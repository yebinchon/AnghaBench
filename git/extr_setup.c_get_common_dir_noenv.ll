; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_get_common_dir_noenv.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_get_common_dir_noenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s/commondir\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_common_dir_noenv(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @file_exists(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strbuf_read_file(%struct.strbuf* %5, i8* %18, i32 0)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @die_errno(i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %57, %26
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 13
  br label %53

53:                                               ; preds = %42, %31
  %54 = phi i1 [ true, %31 ], [ %52, %42 ]
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i1 [ false, %27 ], [ %54, %53 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  br label %27

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  %68 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @is_absolute_path(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %61
  %77 = call i32 @strbuf_addbuf(%struct.strbuf* %6, %struct.strbuf* %5)
  %78 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strbuf_add_real_path(%struct.strbuf* %78, i8* %80)
  store i32 1, i32* %7, align 4
  br label %86

82:                                               ; preds = %2
  %83 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strbuf_addstr(%struct.strbuf* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = call i32 @strbuf_release(%struct.strbuf* %5)
  %88 = call i32 @strbuf_release(%struct.strbuf* %6)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @file_exists(i8*) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_add_real_path(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
