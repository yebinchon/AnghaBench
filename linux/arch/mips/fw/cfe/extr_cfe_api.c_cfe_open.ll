; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i64, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@CFE_CMD_DEV_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cfe_xiocb, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @CFE_CMD_DEV_OPEN, align 4
  %6 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 5
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 1
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 2
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @XPTR_FROM_NATIVE(i8* %14)
  %16 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %4)
  %25 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @XPTR_FROM_NATIVE(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
