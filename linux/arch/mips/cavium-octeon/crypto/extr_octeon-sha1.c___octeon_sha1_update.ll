; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c___octeon_sha1_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c___octeon_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_state = type { i32, i32* }

@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha1_state*, i32*, i32)* @__octeon_sha1_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__octeon_sha1_update(%struct.sha1_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sha1_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sha1_state* %0, %struct.sha1_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sha1_state*, %struct.sha1_state** %4, align 8
  %11 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sha1_state*, %struct.sha1_state** %4, align 8
  %17 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %18, %15
  store i32 %19, i32* %17, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %21, %22
  %24 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 0, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sha1_state*, %struct.sha1_state** %4, align 8
  %33 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %41 = add i32 %39, %40
  %42 = call i32 @memcpy(i32* %37, i32* %38, i32 %41)
  %43 = load %struct.sha1_state*, %struct.sha1_state** %4, align 8
  %44 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %29, %26
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @octeon_sha1_transform(i32* %48)
  %50 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %9, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %47, label %63

63:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.sha1_state*, %struct.sha1_state** %4, align 8
  %66 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 @memcpy(i32* %70, i32* %71, i32 %74)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @octeon_sha1_transform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
