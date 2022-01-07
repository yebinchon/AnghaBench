; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i32 }
%struct.mc_proxy_merge_functions = type { i32 (%struct.connection.0*, i8*, i32, i8*, %struct.gather_entry.1*, i32)* }
%struct.connection.0 = type opaque
%struct.gather_entry.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gather_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mc_proxy_merge_functions*, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call %struct.mc_proxy_merge_functions* (...) @get_extension_functions()
  store %struct.mc_proxy_merge_functions* %14, %struct.mc_proxy_merge_functions** %13, align 8
  %15 = load %struct.mc_proxy_merge_functions*, %struct.mc_proxy_merge_functions** %13, align 8
  %16 = getelementptr inbounds %struct.mc_proxy_merge_functions, %struct.mc_proxy_merge_functions* %15, i32 0, i32 0
  %17 = load i32 (%struct.connection.0*, i8*, i32, i8*, %struct.gather_entry.1*, i32)*, i32 (%struct.connection.0*, i8*, i32, i8*, %struct.gather_entry.1*, i32)** %16, align 8
  %18 = load %struct.connection*, %struct.connection** %7, align 8
  %19 = bitcast %struct.connection* %18 to %struct.connection.0*
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %24 = bitcast %struct.gather_entry* %23 to %struct.gather_entry.1*
  %25 = load i32, i32* %12, align 4
  %26 = call i32 %17(%struct.connection.0* %19, i8* %20, i32 %21, i8* %22, %struct.gather_entry.1* %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.mc_proxy_merge_functions* @get_extension_functions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
