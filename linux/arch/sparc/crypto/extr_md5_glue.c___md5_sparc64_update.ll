; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_md5_glue.c___md5_sparc64_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_md5_glue.c___md5_sparc64_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_state = type { i32, i32*, i32 }

@MD5_HMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md5_state*, i32*, i32, i32)* @__md5_sparc64_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md5_sparc64_update(%struct.md5_state* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.md5_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.md5_state* %0, %struct.md5_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %13 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32, i32* @MD5_HMAC_BLOCK_SIZE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %23 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @memcpy(i32* %27, i32* %28, i32 %29)
  %31 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %32 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %35 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @md5_sparc64_transform(i32 %33, i32* %36, i32 1)
  br label %38

38:                                               ; preds = %18, %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub i32 %39, %40
  %42 = load i32, i32* @MD5_HMAC_BLOCK_SIZE, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  %48 = load i32, i32* @MD5_HMAC_BLOCK_SIZE, align 4
  %49 = udiv i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %51 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @md5_sparc64_transform(i32 %52, i32* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @MD5_HMAC_BLOCK_SIZE, align 4
  %61 = mul i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %44, %38
  %65 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %66 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 @memcpy(i32* %67, i32* %71, i32 %74)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @md5_sparc64_transform(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
