; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_interpret_target.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_interpret_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32 (%struct.walker*, %struct.ref*)* }
%struct.ref = type opaque
%struct.object_id = type { i32 }
%struct.ref.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, i8*, %struct.object_id*)* @interpret_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_target(%struct.walker* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.walker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.ref.0*, align 8
  store %struct.walker* %0, %struct.walker** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.object_id*, %struct.object_id** %7, align 8
  %11 = call i32 @get_oid_hex(i8* %9, %struct.object_id* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @check_refname_format(i8* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.ref.0* @alloc_ref(i8* %19)
  store %struct.ref.0* %20, %struct.ref.0** %8, align 8
  %21 = load %struct.walker*, %struct.walker** %5, align 8
  %22 = getelementptr inbounds %struct.walker, %struct.walker* %21, i32 0, i32 0
  %23 = load i32 (%struct.walker*, %struct.ref*)*, i32 (%struct.walker*, %struct.ref*)** %22, align 8
  %24 = load %struct.walker*, %struct.walker** %5, align 8
  %25 = load %struct.ref.0*, %struct.ref.0** %8, align 8
  %26 = bitcast %struct.ref.0* %25 to %struct.ref*
  %27 = call i32 %23(%struct.walker* %24, %struct.ref* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = load %struct.object_id*, %struct.object_id** %7, align 8
  %31 = load %struct.ref.0*, %struct.ref.0** %8, align 8
  %32 = getelementptr inbounds %struct.ref.0, %struct.ref.0* %31, i32 0, i32 0
  %33 = call i32 @oidcpy(%struct.object_id* %30, i32* %32)
  %34 = load %struct.ref.0*, %struct.ref.0** %8, align 8
  %35 = call i32 @free(%struct.ref.0* %34)
  store i32 0, i32* %4, align 4
  br label %40

36:                                               ; preds = %18
  %37 = load %struct.ref.0*, %struct.ref.0** %8, align 8
  %38 = call i32 @free(%struct.ref.0* %37)
  br label %39

39:                                               ; preds = %36, %14
  store i32 -1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %29, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @check_refname_format(i8*, i32) #1

declare dso_local %struct.ref.0* @alloc_ref(i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @free(%struct.ref.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
