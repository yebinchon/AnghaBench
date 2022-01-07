; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c___octeon_sha512_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c___octeon_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i32*, i32* }

@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha512_state*, i32*, i32)* @__octeon_sha512_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__octeon_sha512_update(%struct.sha512_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sha512_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sha512_state* %0, %struct.sha512_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %11 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %19 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %28 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  %41 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %42 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %51 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @octeon_sha512_transform(i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %67, %40
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @octeon_sha512_transform(i32* %65)
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %55

71:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %73

72:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %75 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %84, %85
  %87 = call i32 @memcpy(i32* %79, i32* %83, i32 %86)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @octeon_sha512_transform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
