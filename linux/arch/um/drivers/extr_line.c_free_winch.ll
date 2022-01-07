; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_free_winch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_free_winch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winch = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.winch*)* @free_winch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_winch(%struct.winch* %0) #0 {
  %2 = alloca %struct.winch*, align 8
  %3 = alloca i32, align 4
  store %struct.winch* %0, %struct.winch** %2, align 8
  %4 = load %struct.winch*, %struct.winch** %2, align 8
  %5 = getelementptr inbounds %struct.winch, %struct.winch* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.winch*, %struct.winch** %2, align 8
  %8 = getelementptr inbounds %struct.winch, %struct.winch* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @os_close_file(i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.winch*, %struct.winch** %2, align 8
  %16 = getelementptr inbounds %struct.winch, %struct.winch* %15, i32 0, i32 2
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.winch*, %struct.winch** %2, align 8
  %19 = getelementptr inbounds %struct.winch, %struct.winch* %18, i32 0, i32 1
  %20 = call i32 @__free_winch(i32* %19)
  ret void
}

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_winch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
