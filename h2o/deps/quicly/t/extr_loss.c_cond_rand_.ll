; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_loss.c_cond_rand_.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_loss.c_cond_rand_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loss_cond_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@cond_rand_.c = internal global i32* null, align 8
@cond_rand_.key = internal global [2 x i32] zeroinitializer, align 4
@ptls_openssl_aes128ctr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loss_cond_t*)* @cond_rand_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_rand_(%struct.loss_cond_t* %0) #0 {
  %2 = alloca %struct.loss_cond_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.loss_cond_t* %0, %struct.loss_cond_t** %2, align 8
  %6 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %7 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %1
  %13 = load i32*, i32** @cond_rand_.c, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = call i32* @ptls_cipher_new(i32* @ptls_openssl_aes128ctr, i32 1, i32** bitcast ([2 x i32]* @cond_rand_.key to i32**))
  store i32* %16, i32** @cond_rand_.c, align 8
  %17 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cond_rand_.key, i64 0, i64 0), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cond_rand_.key, i64 0, i64 0), align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %21 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %63, %19
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %27 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %25, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32*, i32** @cond_rand_.c, align 8
  %36 = call i32 @ptls_cipher_encrypt(i32* %35, i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %39 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %37, %43
  %45 = shl i32 1, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %48 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %34, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %58 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %68 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %74 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %1
  %78 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %79 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.loss_cond_t*, %struct.loss_cond_t** %2, align 8
  %84 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = ashr i32 %82, %88
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  ret i32 %92
}

declare dso_local i32* @ptls_cipher_new(i32*, i32, i32**) #1

declare dso_local i32 @ptls_cipher_encrypt(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
