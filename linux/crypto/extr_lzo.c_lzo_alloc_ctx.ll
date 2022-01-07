; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lzo.c_lzo_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lzo.c_lzo_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_scomp = type { i32 }

@LZO1X_MEM_COMPRESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.crypto_scomp*)* @lzo_alloc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lzo_alloc_ctx(%struct.crypto_scomp* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypto_scomp*, align 8
  %4 = alloca i8*, align 8
  store %struct.crypto_scomp* %0, %struct.crypto_scomp** %3, align 8
  %5 = load i32, i32* @LZO1X_MEM_COMPRESS, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kvmalloc(i32 %5, i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i8* @ERR_PTR(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

declare dso_local i8* @kvmalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
