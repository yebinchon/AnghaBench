; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.mgsl_icount }
%struct.mgsl_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @mgslpc_get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgslpc_get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.mgsl_icount, align 4
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = bitcast %struct.mgsl_icount* %6 to i8*
  %19 = bitcast %struct.mgsl_icount* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 44, i1 false)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %27 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %31 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %35 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %39 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %43 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %47 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %51 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %55 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %59 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %63 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %67 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
