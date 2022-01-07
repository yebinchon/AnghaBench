; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sha3_generic.c_crypto_sha3_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sha3_generic.c_crypto_sha3_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha3_state = type { i32, i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sha3_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha3_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.sha3_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha3_state* %12, %struct.sha3_state** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %9, align 8
  %14 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %15 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %20 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp ugt i32 %18, %22
  br i1 %23, label %24, label %104

24:                                               ; preds = %3
  %25 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %26 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %31 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %35 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %38 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %45 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %43, %46
  %48 = call i32 @memcpy(i32* %41, i32* %42, i32 %47)
  %49 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %50 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %29, %24
  br label %53

53:                                               ; preds = %92, %52
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %57 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = mul i32 8, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @get_unaligned_le64(i32* %65)
  %67 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %68 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %66
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %80 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @keccakf(i32* %81)
  %83 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %84 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %95 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = add i32 %93, %97
  %99 = load i32, i32* %6, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %53, label %101

101:                                              ; preds = %92
  %102 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %103 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %3
  %105 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %106 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %109 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub i32 %114, %115
  %117 = call i32 @memcpy(i32* %112, i32* %113, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub i32 %118, %119
  %121 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %122 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, %120
  store i32 %124, i32* %122, align 8
  ret i32 0
}

declare dso_local %struct.sha3_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

declare dso_local i32 @keccakf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
