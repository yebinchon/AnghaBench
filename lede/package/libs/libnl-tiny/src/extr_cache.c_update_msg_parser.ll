; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_update_msg_parser.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_update_msg_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32, i32 }
%struct.update_xdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @update_msg_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_msg_parser(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.update_xdata*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.update_xdata*
  store %struct.update_xdata* %7, %struct.update_xdata** %5, align 8
  %8 = load %struct.update_xdata*, %struct.update_xdata** %5, align 8
  %9 = getelementptr inbounds %struct.update_xdata, %struct.update_xdata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %12 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %11, i32 0, i32 1
  %13 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %14 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.update_xdata*, %struct.update_xdata** %5, align 8
  %17 = getelementptr inbounds %struct.update_xdata, %struct.update_xdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nl_cache_parse(i32 %10, i32* %12, i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local i32 @nl_cache_parse(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
