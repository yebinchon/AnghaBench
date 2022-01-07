; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_zout_write_lev_crc32.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_zout_write_lev_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_crc32 = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@LEV_CRC32 = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lev_crc32* @dl_zout_write_lev_crc32(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.lev_crc32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = call i32 @dl_zout_flush(%struct.TYPE_5__* %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = load i32, i32* @LEV_CRC32, align 4
  %8 = call %struct.lev_crc32* @dl_zout_alloc_log_event(%struct.TYPE_5__* %6, i32 %7, i32 12)
  store %struct.lev_crc32* %8, %struct.lev_crc32** %3, align 8
  %9 = load i32, i32* @now, align 4
  %10 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %11 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %16 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  %22 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.lev_crc32*, %struct.lev_crc32** %3, align 8
  ret %struct.lev_crc32* %23
}

declare dso_local i32 @dl_zout_flush(%struct.TYPE_5__*) #1

declare dso_local %struct.lev_crc32* @dl_zout_alloc_log_event(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
