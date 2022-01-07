; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_tx_add_aal5_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_tx_add_aal5_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_vcc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"vcc_tx_add_aal5_trailer: bad ptr=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_vcc*, i32, i32, i32)* @vcc_tx_add_aal5_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_tx_add_aal5_trailer(%struct.lanai_vcc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lanai_vcc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lanai_vcc* %0, %struct.lanai_vcc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %10 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = and i64 %14, 15
  %16 = icmp eq i64 %15, 8
  %17 = zext i1 %16 to i32
  %18 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %19 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @APRINTK(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %25 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %27, align 8
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @cpu_to_be32(i32 %36)
  %38 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %39 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -2
  store i32 %37, i32* %43, align 4
  %44 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %45 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %50 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp uge i32* %48, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %4
  %56 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %57 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %62 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32* %60, i32** %64, align 8
  br label %65

65:                                               ; preds = %55, %4
  ret void
}

declare dso_local i32 @APRINTK(i32, i8*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
