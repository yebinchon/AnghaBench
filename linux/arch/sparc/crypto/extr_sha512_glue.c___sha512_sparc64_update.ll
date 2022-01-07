; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha512_glue.c___sha512_sparc64_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha512_glue.c___sha512_sparc64_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i32*, i32*, i32 }

@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha512_state*, i32*, i32, i32)* @__sha512_sparc64_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sha512_sparc64_update(%struct.sha512_state* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sha512_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sha512_state* %0, %struct.sha512_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %13 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %22 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %35 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32* %39, i32* %40, i32 %41)
  %43 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %44 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %47 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @sha512_sparc64_transform(i32 %45, i32* %48, i32 1)
  br label %50

50:                                               ; preds = %30, %27
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %51, %52
  %54 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %57, %58
  %60 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %63 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @sha512_sparc64_transform(i32 %64, i32* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %73 = mul i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %56, %50
  %77 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %78 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %84, %85
  %87 = call i32 @memcpy(i32* %79, i32* %83, i32 %86)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha512_sparc64_transform(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
