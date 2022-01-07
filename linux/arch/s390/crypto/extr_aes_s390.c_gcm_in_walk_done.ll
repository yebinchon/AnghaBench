; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_in_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_in_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_sg_walk = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gcm_sg_walk*, i32)* @gcm_in_walk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_in_walk_done(%struct.gcm_sg_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcm_sg_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gcm_sg_walk* %0, %struct.gcm_sg_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %8 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %14 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %17 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %12
  %21 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %22 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %30 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %33 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @memmove(i32* %31, i32* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %42 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %46

43:                                               ; preds = %20
  %44 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %45 = getelementptr inbounds %struct.gcm_sg_walk, %struct.gcm_sg_walk* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %28
  br label %51

47:                                               ; preds = %12
  %48 = load %struct.gcm_sg_walk*, %struct.gcm_sg_walk** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @_gcm_sg_unmap_and_advance(%struct.gcm_sg_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
