; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_dbg.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"list %d: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @data_restore_dbg(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @map_int_vptr_get(i32* %7, i32 %8)
  %10 = inttoptr i64 %9 to i32**
  store i32** %10, i32*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32**, i32*** %5, align 8
  %13 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11, i32** %12)
  %14 = load i32**, i32*** %5, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @restore_list_dbg(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @map_int_vptr_get(i32*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32**) #1

declare dso_local i32 @restore_list_dbg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
