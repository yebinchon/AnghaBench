; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_store_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_store_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TEXT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @store_entry(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @TEXT_SIZE, align 4
  %6 = sext i32 %5 to i64
  %7 = sub i64 4, %6
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %7, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_8__* @mymalloc(i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = call i32 @assert(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @memcpy(%struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %23
}

declare dso_local %struct.TYPE_8__* @mymalloc(i32) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
