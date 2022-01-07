; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_seqiv.c_seqiv_aead_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_seqiv.c_seqiv_aead_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.aead_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@seqiv_aead_encrypt = common dso_local global i32 0, align 4
@seqiv_aead_decrypt = common dso_local global i32 0, align 4
@aead_init_geniv = common dso_local global i32 0, align 4
@aead_exit_geniv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @seqiv_aead_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqiv_aead_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.aead_instance*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %8 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %9 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %10 = call %struct.aead_instance* @aead_geniv_alloc(%struct.crypto_template* %8, %struct.rtattr** %9, i32 0, i32 0)
  store %struct.aead_instance* %10, %struct.aead_instance** %6, align 8
  %11 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %12 = call i64 @IS_ERR(%struct.aead_instance* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.aead_instance* %15)
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %21 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %67

27:                                               ; preds = %17
  %28 = load i32, i32* @seqiv_aead_encrypt, align 4
  %29 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %30 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @seqiv_aead_decrypt, align 4
  %33 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %34 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @aead_init_geniv, align 4
  %37 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %38 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @aead_exit_geniv, align 4
  %41 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %42 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %45 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 4, i32* %47, align 4
  %48 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %49 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %53 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %59 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %60 = call i32 @aead_register_instance(%struct.crypto_template* %58, %struct.aead_instance* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %27
  br label %67

64:                                               ; preds = %27
  br label %65

65:                                               ; preds = %67, %64
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %63, %26
  %68 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %69 = call i32 @aead_geniv_free(%struct.aead_instance* %68)
  br label %65

70:                                               ; preds = %65, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.aead_instance* @aead_geniv_alloc(%struct.crypto_template*, %struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.aead_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.aead_instance*) #1

declare dso_local i32 @aead_register_instance(%struct.crypto_template*, %struct.aead_instance*) #1

declare dso_local i32 @aead_geniv_free(%struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
