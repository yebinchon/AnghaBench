; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"device class '%s': unregistering\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @class_unregister(%struct.class* %0) #0 {
  %2 = alloca %struct.class*, align 8
  store %struct.class* %0, %struct.class** %2, align 8
  %3 = load %struct.class*, %struct.class** %2, align 8
  %4 = getelementptr inbounds %struct.class, %struct.class* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.class*, %struct.class** %2, align 8
  %8 = load %struct.class*, %struct.class** %2, align 8
  %9 = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @class_remove_groups(%struct.class* %7, i32 %10)
  %12 = load %struct.class*, %struct.class** %2, align 8
  %13 = getelementptr inbounds %struct.class, %struct.class* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @kset_unregister(i32* %15)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @class_remove_groups(%struct.class*, i32) #1

declare dso_local i32 @kset_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
