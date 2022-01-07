; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_merge_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_merge_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.mc_proxy_merge_functions = type { i32 (%struct.connection.0*, i32, i8*, i32, i32, i32, i32)* }
%struct.connection.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mc_proxy_merge_functions*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = call %struct.mc_proxy_merge_functions* (...) @get_extension_functions()
  store %struct.mc_proxy_merge_functions* %16, %struct.mc_proxy_merge_functions** %15, align 8
  %17 = load %struct.mc_proxy_merge_functions*, %struct.mc_proxy_merge_functions** %15, align 8
  %18 = getelementptr inbounds %struct.mc_proxy_merge_functions, %struct.mc_proxy_merge_functions* %17, i32 0, i32 0
  %19 = load i32 (%struct.connection.0*, i32, i8*, i32, i32, i32, i32)*, i32 (%struct.connection.0*, i32, i8*, i32, i32, i32, i32)** %18, align 8
  %20 = load %struct.connection*, %struct.connection** %8, align 8
  %21 = bitcast %struct.connection* %20 to %struct.connection.0*
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 %19(%struct.connection.0* %21, i32 %22, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local %struct.mc_proxy_merge_functions* @get_extension_functions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
