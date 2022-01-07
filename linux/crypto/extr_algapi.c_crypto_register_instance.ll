; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_register_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_register_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32, i32 }
%struct.crypto_instance = type { %struct.crypto_template*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.crypto_larval = type { i32 }

@CRYPTO_ALG_INSTANCE = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_instance(%struct.crypto_template* %0, %struct.crypto_instance* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.crypto_instance*, align 8
  %6 = alloca %struct.crypto_larval*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.crypto_instance* %1, %struct.crypto_instance** %5, align 8
  %8 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %9 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %8, i32 0, i32 2
  %10 = call i32 @crypto_check_alg(%struct.TYPE_3__* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %20 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @CRYPTO_ALG_INSTANCE, align 4
  %23 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = call i32 @down_write(i32* @crypto_alg_sem)
  %29 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %29, i32 0, i32 2
  %31 = call %struct.crypto_larval* @__crypto_register_alg(%struct.TYPE_3__* %30)
  store %struct.crypto_larval* %31, %struct.crypto_larval** %6, align 8
  %32 = load %struct.crypto_larval*, %struct.crypto_larval** %6, align 8
  %33 = call i64 @IS_ERR(%struct.crypto_larval* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %45

36:                                               ; preds = %15
  %37 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %37, i32 0, i32 1
  %39 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %39, i32 0, i32 0
  %41 = call i32 @hlist_add_head(i32* %38, i32* %40)
  %42 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %43 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %44 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %43, i32 0, i32 0
  store %struct.crypto_template* %42, %struct.crypto_template** %44, align 8
  br label %45

45:                                               ; preds = %36, %35
  %46 = call i32 @up_write(i32* @crypto_alg_sem)
  %47 = load %struct.crypto_larval*, %struct.crypto_larval** %6, align 8
  %48 = call i32 @PTR_ERR(%struct.crypto_larval* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.crypto_larval*, %struct.crypto_larval** %6, align 8
  %50 = call i64 @IS_ERR(%struct.crypto_larval* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.crypto_larval*, %struct.crypto_larval** %6, align 8
  %55 = call i32 @crypto_wait_for_test(%struct.crypto_larval* %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @crypto_check_alg(%struct.TYPE_3__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.crypto_larval* @__crypto_register_alg(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @crypto_wait_for_test(%struct.crypto_larval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
