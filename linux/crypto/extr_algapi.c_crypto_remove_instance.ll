; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_remove_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_remove_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_2__, i32, %struct.crypto_template* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.crypto_template = type { i32 }
%struct.list_head = type { i32 }

@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@crypto_destroy_instance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_instance*, %struct.list_head*)* @crypto_remove_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_remove_instance(%struct.crypto_instance* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.crypto_instance*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.crypto_template*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %6, i32 0, i32 2
  %8 = load %struct.crypto_template*, %struct.crypto_template** %7, align 8
  store %struct.crypto_template* %8, %struct.crypto_template** %5, align 8
  %9 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %9, i32 0, i32 0
  %11 = call i64 @crypto_is_dead(%struct.TYPE_2__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %16 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %17 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %21, i32 0, i32 1
  %23 = call i64 @hlist_unhashed(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %55

26:                                               ; preds = %14
  %27 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %28 = icmp ne %struct.crypto_template* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %31 = call i32 @crypto_tmpl_get(%struct.crypto_template* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %26
  br label %55

34:                                               ; preds = %29
  %35 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %36 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load %struct.list_head*, %struct.list_head** %4, align 8
  %39 = call i32 @list_move(i32* %37, %struct.list_head* %38)
  %40 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %41 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %40, i32 0, i32 1
  %42 = call i32 @hlist_del(i32* %41)
  %43 = load i32, i32* @crypto_destroy_instance, align 4
  %44 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %45 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %48 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  br label %55

55:                                               ; preds = %34, %33, %25, %13
  ret void
}

declare dso_local i64 @crypto_is_dead(%struct.TYPE_2__*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @crypto_tmpl_get(%struct.crypto_template*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
