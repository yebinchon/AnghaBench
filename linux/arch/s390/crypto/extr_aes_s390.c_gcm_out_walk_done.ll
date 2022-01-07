; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_out_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_out_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i32*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gcm_sg_walk*, i32)* @gcm_out_walk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_out_walk_done(%struct.gcm_sg_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcm_sg_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %9 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %15 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %18 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %16, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %28 = call i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %26
  %33 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %34 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %36, %37
  %39 = call i32 @min(i32 %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %41 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %44 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memcpy(i32 %42, i32* %48, i32 %49)
  %51 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk* %51, i32 %52)
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %22

58:                                               ; preds = %22
  br label %63

59:                                               ; preds = %13
  %60 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %30, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @_gcm_sg_clamp_and_map(%struct.gcm_sg_walk*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
