; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_fail_exception.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_fail_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@UndefinedException = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Magick: %s (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_stack*, %struct.TYPE_3__*)* @fail_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_exception(%struct.forth_stack* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.forth_stack*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.forth_stack* %0, %struct.forth_stack** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UndefinedException, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.forth_stack*, %struct.forth_stack** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @failf(%struct.forth_stack* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @failf(%struct.forth_stack*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
