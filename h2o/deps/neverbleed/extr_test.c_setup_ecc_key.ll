; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_setup_ecc_key.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_setup_ecc_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create curve \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup_ecc_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ecc_key(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @NID_X9_62_prime256v1, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32* @EC_KEY_new_by_curve_name(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @OBJ_nid2sn(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %21

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @SSL_CTX_set_tmp_ecdh(i32* %16, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @EC_KEY_free(i32* %19)
  br label %21

21:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @SSL_CTX_set_tmp_ecdh(i32*, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
