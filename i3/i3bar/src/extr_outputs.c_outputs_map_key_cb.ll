; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_map_key_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_map_key_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outputs_json_params = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @outputs_map_key_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @outputs_map_key_cb(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.outputs_json_params*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.outputs_json_params*
  store %struct.outputs_json_params* %9, %struct.outputs_json_params** %7, align 8
  %10 = load %struct.outputs_json_params*, %struct.outputs_json_params** %7, align 8
  %11 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FREE(i32 %12)
  %14 = load %struct.outputs_json_params*, %struct.outputs_json_params** %7, align 8
  %15 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @sasprintf(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %16, i8* %17)
  ret i32 1
}

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @sasprintf(i32*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
