; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/purgatory/extr_purgatory.c_verify_sha256_digest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/purgatory/extr_purgatory.c_verify_sha256_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kexec_sha_region = type { i32, i64 }
%struct.sha256_state = type { i32 }

@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@purgatory_sha_regions = common dso_local global %struct.kexec_sha_region* null, align 8
@purgatory_sha256_digest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_sha256_digest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.kexec_sha_region*, align 8
  %3 = alloca %struct.kexec_sha_region*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sha256_state, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @sha256_init(%struct.sha256_state* %6)
  %13 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** @purgatory_sha_regions, align 8
  %14 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** @purgatory_sha_regions, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.kexec_sha_region* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kexec_sha_region, %struct.kexec_sha_region* %13, i64 %16
  store %struct.kexec_sha_region* %17, %struct.kexec_sha_region** %3, align 8
  %18 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** @purgatory_sha_regions, align 8
  store %struct.kexec_sha_region* %18, %struct.kexec_sha_region** %2, align 8
  br label %19

19:                                               ; preds = %32, %0
  %20 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** %2, align 8
  %21 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** %3, align 8
  %22 = icmp ult %struct.kexec_sha_region* %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** %2, align 8
  %25 = getelementptr inbounds %struct.kexec_sha_region, %struct.kexec_sha_region* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** %2, align 8
  %29 = getelementptr inbounds %struct.kexec_sha_region, %struct.kexec_sha_region* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sha256_update(%struct.sha256_state* %6, i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load %struct.kexec_sha_region*, %struct.kexec_sha_region** %2, align 8
  %34 = getelementptr inbounds %struct.kexec_sha_region, %struct.kexec_sha_region* %33, i32 1
  store %struct.kexec_sha_region* %34, %struct.kexec_sha_region** %2, align 8
  br label %19

35:                                               ; preds = %19
  %36 = call i32 @sha256_final(%struct.sha256_state* %6, i32* %11)
  %37 = load i32, i32* @purgatory_sha256_digest, align 4
  %38 = mul nuw i64 4, %9
  %39 = trunc i64 %38 to i32
  %40 = call i64 @memcmp(i32* %11, i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sha256_init(%struct.sha256_state*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.kexec_sha_region*) #2

declare dso_local i32 @sha256_update(%struct.sha256_state*, i32*, i32) #2

declare dso_local i32 @sha256_final(%struct.sha256_state*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
