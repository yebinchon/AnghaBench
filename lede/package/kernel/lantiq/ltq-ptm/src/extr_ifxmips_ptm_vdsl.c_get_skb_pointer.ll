; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_get_skb_pointer.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_get_skb_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"dataptr is 0, it's supposed to be invalid pointer\00", align 1
@KSEG1 = common dso_local global i32 0, align 4
@KSEG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid skb - skb = %#08x, dataptr = %#08x\00", align 1
@DATA_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"invalid skb - skb = %#08x, skb->data = %#08x, dataptr = %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32)* @get_skb_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_skb_pointer(i32 %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %52

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 %11, 4
  %13 = load i32, i32* @KSEG1, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.sk_buff**
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = ptrtoint %struct.sk_buff* %19 to i32
  %21 = load i32, i32* @KSEG0, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = ptrtoint %struct.sk_buff* %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @ASSERT(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 268435455, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @KSEG1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @KSEG1, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = ptrtoint %struct.sk_buff* %43 to i32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @ASSERT(i32 %42, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %2, align 8
  br label %52

52:                                               ; preds = %10, %8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %53
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @ASSERT(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
