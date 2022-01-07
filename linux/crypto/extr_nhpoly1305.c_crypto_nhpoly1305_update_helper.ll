; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_update_helper.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_update_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.nhpoly1305_state = type { i32, i32* }
%struct.nhpoly1305_key = type { i32 }

@NH_MESSAGE_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_nhpoly1305_update_helper(%struct.shash_desc* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nhpoly1305_state*, align 8
  %11 = alloca %struct.nhpoly1305_key*, align 8
  %12 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %14 = call %struct.nhpoly1305_state* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.nhpoly1305_state* %14, %struct.nhpoly1305_state** %10, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nhpoly1305_key* @crypto_shash_ctx(i32 %17)
  store %struct.nhpoly1305_key* %18, %struct.nhpoly1305_key** %11, align 8
  %19 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %20 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NH_MESSAGE_UNIT, align 4
  %26 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %27 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = call i32 @min(i32 %24, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %32 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %35 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %44 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %48 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NH_MESSAGE_UNIT, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %106

53:                                               ; preds = %23
  %54 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %55 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %11, align 8
  %56 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %57 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @NH_MESSAGE_UNIT, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @nhpoly1305_units(%struct.nhpoly1305_state* %54, %struct.nhpoly1305_key* %55, i32* %58, i32 %59, i32 %60)
  %62 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %63 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %53, %4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NH_MESSAGE_UNIT, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @NH_MESSAGE_UNIT, align 4
  %78 = call i32 @round_down(i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %80 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %11, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @nhpoly1305_units(%struct.nhpoly1305_state* %79, %struct.nhpoly1305_key* %80, i32* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %75, %71
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %97 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %10, align 8
  %104 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %95, %92
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %52
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.nhpoly1305_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nhpoly1305_key* @crypto_shash_ctx(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nhpoly1305_units(%struct.nhpoly1305_state*, %struct.nhpoly1305_key*, i32*, i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
