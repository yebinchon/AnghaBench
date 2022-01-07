; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffcore_apply_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffcore_apply_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32 }
%struct.diff_options = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@DIFF_STATUS_FILTER_AON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*)* @diffcore_apply_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diffcore_apply_filter(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_queue_struct, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %4, align 8
  %8 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %5)
  %9 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %10 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %111

14:                                               ; preds = %1
  %15 = load i32, i32* @DIFF_STATUS_FILTER_AON, align 4
  %16 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %17 = call i64 @filter_bit_tst(i32 %15, %struct.diff_options* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %26 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %33 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %34 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %33, i32 0, i32 1
  %35 = load %struct.diff_filepair**, %struct.diff_filepair*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %35, i64 %37
  %39 = load %struct.diff_filepair*, %struct.diff_filepair** %38, align 8
  %40 = call i64 @match_filter(%struct.diff_options* %32, %struct.diff_filepair* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %20

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %111

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %57 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %62 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %61, i32 0, i32 1
  %63 = load %struct.diff_filepair**, %struct.diff_filepair*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %63, i64 %65
  %67 = load %struct.diff_filepair*, %struct.diff_filepair** %66, align 8
  %68 = call i32 @diff_free_filepair(%struct.diff_filepair* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %54

72:                                               ; preds = %54
  br label %103

73:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %99, %73
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %77 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %82 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %81, i32 0, i32 1
  %83 = load %struct.diff_filepair**, %struct.diff_filepair*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %83, i64 %85
  %87 = load %struct.diff_filepair*, %struct.diff_filepair** %86, align 8
  store %struct.diff_filepair* %87, %struct.diff_filepair** %7, align 8
  %88 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %89 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %90 = call i64 @match_filter(%struct.diff_options* %88, %struct.diff_filepair* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %94 = call i32 @diff_q(%struct.diff_queue_struct* %5, %struct.diff_filepair* %93)
  br label %98

95:                                               ; preds = %80
  %96 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %97 = call i32 @diff_free_filepair(%struct.diff_filepair* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %74

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %105 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %104, i32 0, i32 1
  %106 = load %struct.diff_filepair**, %struct.diff_filepair*** %105, align 8
  %107 = call i32 @free(%struct.diff_filepair** %106)
  %108 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %109 = bitcast %struct.diff_queue_struct* %108 to i8*
  %110 = bitcast %struct.diff_queue_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  br label %111

111:                                              ; preds = %103, %52, %13
  ret void
}

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

declare dso_local i64 @filter_bit_tst(i32, %struct.diff_options*) #1

declare dso_local i64 @match_filter(%struct.diff_options*, %struct.diff_filepair*) #1

declare dso_local i32 @diff_free_filepair(%struct.diff_filepair*) #1

declare dso_local i32 @diff_q(%struct.diff_queue_struct*, %struct.diff_filepair*) #1

declare dso_local i32 @free(%struct.diff_filepair**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
