; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_in_walk_go.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_in_walk_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i32, i32, i64, i32, i32*, i32*, i32* }

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gcm_sg_walk*, i32)* @gcm_in_walk_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_in_walk_go(%struct.gcm_sg_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.gcm_sg_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %7 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %12 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %18 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %21 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %23 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %26 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %127

27:                                               ; preds = %10, %2
  %28 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %29 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %34 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %36 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %127

37:                                               ; preds = %27
  %38 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %39 = call i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %43 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %45 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %127

46:                                               ; preds = %37
  %47 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %48 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %53 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %59 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %62 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %64 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %67 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %127

68:                                               ; preds = %51, %46
  br label %69

69:                                               ; preds = %68, %126
  %70 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %71 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %74 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %75 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = zext i32 %76 to i64
  %78 = sub nsw i64 %73, %77
  %79 = call i32 @min(i32 %72, i64 %78)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %81 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %84 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %89 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @memcpy(i32* %87, i32* %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %95 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk* %98, i32 %99)
  %101 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %102 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = icmp uge i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %69
  %107 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %108 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %111 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  %112 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %113 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %116 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %127

117:                                              ; preds = %69
  %118 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %119 = call i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %123 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %122, i32 0, i32 4
  store i32* null, i32** %123, align 8
  %124 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %125 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %127

126:                                              ; preds = %117
  br label %69

127:                                              ; preds = %121, %106, %57, %41, %32, %16
  %128 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %3, align 8
  %129 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  ret i32 %130
}

declare dso_local i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
