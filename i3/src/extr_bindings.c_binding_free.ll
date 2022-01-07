; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_binding_free.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_binding_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Binding_Keycode = type { %struct.Binding_Keycode*, %struct.Binding_Keycode*, i32 }

@keycodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binding_free(%struct.Binding_Keycode* %0) #0 {
  %2 = alloca %struct.Binding_Keycode*, align 8
  %3 = alloca %struct.Binding_Keycode*, align 8
  store %struct.Binding_Keycode* %0, %struct.Binding_Keycode** %2, align 8
  %4 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %5 = icmp eq %struct.Binding_Keycode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %14, %7
  %9 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %10 = getelementptr inbounds %struct.Binding_Keycode, %struct.Binding_Keycode* %9, i32 0, i32 2
  %11 = call i32 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %16 = getelementptr inbounds %struct.Binding_Keycode, %struct.Binding_Keycode* %15, i32 0, i32 2
  %17 = call %struct.Binding_Keycode* @TAILQ_FIRST(i32* %16)
  store %struct.Binding_Keycode* %17, %struct.Binding_Keycode** %3, align 8
  %18 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %19 = getelementptr inbounds %struct.Binding_Keycode, %struct.Binding_Keycode* %18, i32 0, i32 2
  %20 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %3, align 8
  %21 = load i32, i32* @keycodes, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.Binding_Keycode* %20, i32 %21)
  %23 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %3, align 8
  %24 = call i32 @FREE(%struct.Binding_Keycode* %23)
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %27 = getelementptr inbounds %struct.Binding_Keycode, %struct.Binding_Keycode* %26, i32 0, i32 1
  %28 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %27, align 8
  %29 = call i32 @FREE(%struct.Binding_Keycode* %28)
  %30 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %31 = getelementptr inbounds %struct.Binding_Keycode, %struct.Binding_Keycode* %30, i32 0, i32 0
  %32 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %31, align 8
  %33 = call i32 @FREE(%struct.Binding_Keycode* %32)
  %34 = load %struct.Binding_Keycode*, %struct.Binding_Keycode** %2, align 8
  %35 = call i32 @FREE(%struct.Binding_Keycode* %34)
  br label %36

36:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.Binding_Keycode* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.Binding_Keycode*, i32) #1

declare dso_local i32 @FREE(%struct.Binding_Keycode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
