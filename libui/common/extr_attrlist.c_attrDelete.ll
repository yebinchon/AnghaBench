; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrDelete.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr* (i32*, %struct.attr*)* @attrDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr* @attrDelete(i32* %0, %struct.attr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.attr*, align 8
  %5 = alloca %struct.attr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.attr* %1, %struct.attr** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.attr*, %struct.attr** %4, align 8
  %8 = call %struct.attr* @attrUnlink(i32* %6, %struct.attr* %7)
  store %struct.attr* %8, %struct.attr** %5, align 8
  %9 = load %struct.attr*, %struct.attr** %4, align 8
  %10 = getelementptr inbounds %struct.attr, %struct.attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uiprivAttributeRelease(i32 %11)
  %13 = load %struct.attr*, %struct.attr** %4, align 8
  %14 = call i32 @uiprivFree(%struct.attr* %13)
  %15 = load %struct.attr*, %struct.attr** %5, align 8
  ret %struct.attr* %15
}

declare dso_local %struct.attr* @attrUnlink(i32*, %struct.attr*) #1

declare dso_local i32 @uiprivAttributeRelease(i32) #1

declare dso_local i32 @uiprivFree(%struct.attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
