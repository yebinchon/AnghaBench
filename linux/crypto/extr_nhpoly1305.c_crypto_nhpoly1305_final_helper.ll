; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_final_helper.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_final_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.nhpoly1305_state = type { i32, i32, i64, i32* }
%struct.nhpoly1305_key = type { i32 }

@NH_MESSAGE_UNIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_nhpoly1305_final_helper(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nhpoly1305_state*, align 8
  %8 = alloca %struct.nhpoly1305_key*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.nhpoly1305_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.nhpoly1305_state* %10, %struct.nhpoly1305_state** %7, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nhpoly1305_key* @crypto_shash_ctx(i32 %13)
  store %struct.nhpoly1305_key* %14, %struct.nhpoly1305_key** %8, align 8
  %15 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %16 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %21 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %24 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i64, i64* @NH_MESSAGE_UNIT, align 8
  %29 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %30 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %28, %32
  %34 = call i32 @memset(i32* %27, i32 0, i64 %33)
  %35 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %36 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %8, align 8
  %37 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %38 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @NH_MESSAGE_UNIT, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nhpoly1305_units(%struct.nhpoly1305_state* %35, %struct.nhpoly1305_key* %36, i32* %39, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %19, %3
  %44 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %45 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %50 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %8, align 8
  %51 = call i32 @process_nh_hash_value(%struct.nhpoly1305_state* %49, %struct.nhpoly1305_key* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.nhpoly1305_state*, %struct.nhpoly1305_state** %7, align 8
  %54 = getelementptr inbounds %struct.nhpoly1305_state, %struct.nhpoly1305_state* %53, i32 0, i32 1
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @poly1305_core_emit(i32* %54, i32* %55)
  ret i32 0
}

declare dso_local %struct.nhpoly1305_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nhpoly1305_key* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @nhpoly1305_units(%struct.nhpoly1305_state*, %struct.nhpoly1305_key*, i32*, i64, i32) #1

declare dso_local i32 @process_nh_hash_value(%struct.nhpoly1305_state*, %struct.nhpoly1305_key*) #1

declare dso_local i32 @poly1305_core_emit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
