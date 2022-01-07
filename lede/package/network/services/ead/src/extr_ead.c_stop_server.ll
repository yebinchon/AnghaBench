; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_stop_server.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_stop_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ead_instance = type { i64, i32 }

@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ead_instance*, i32)* @stop_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_server(%struct.ead_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.ead_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.ead_instance* %0, %struct.ead_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ead_instance*, %struct.ead_instance** %3, align 8
  %6 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ead_instance*, %struct.ead_instance** %3, align 8
  %11 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @SIGKILL, align 4
  %14 = call i32 @kill(i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.ead_instance*, %struct.ead_instance** %3, align 8
  %17 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ead_instance*, %struct.ead_instance** %3, align 8
  %22 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.ead_instance*, %struct.ead_instance** %3, align 8
  %25 = call i32 @free(%struct.ead_instance* %24)
  br label %26

26:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free(%struct.ead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
