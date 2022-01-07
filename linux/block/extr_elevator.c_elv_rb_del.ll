; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_rb_del.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_rb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_rb_del(%struct.rb_root* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 0
  %7 = call i32 @RB_EMPTY_NODE(i32* %6)
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %12 = call i32 @rb_erase(i32* %10, %struct.rb_root* %11)
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = call i32 @RB_CLEAR_NODE(i32* %14)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
