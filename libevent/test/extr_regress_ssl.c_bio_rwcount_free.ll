; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_bio_rwcount_free.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_bio_rwcount_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"bio_rwcount_free: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bio_rwcount_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_rwcount_free(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = call i32 @TT_BLATHER(i8* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @BIO_get_shutdown(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @BIO_set_init(i32* %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @BIO_set_data(i32* %17, i32* null)
  br label %19

19:                                               ; preds = %14, %10
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i64 @BIO_get_shutdown(i32*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
