; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_get_ref_atom_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_get_ref_atom_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array_item = type { %struct.atom_value* }
%struct.atom_value = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_array_item*, i32, %struct.atom_value**, %struct.strbuf*)* @get_ref_atom_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ref_atom_value(%struct.ref_array_item* %0, i32 %1, %struct.atom_value** %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_array_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atom_value**, align 8
  %9 = alloca %struct.strbuf*, align 8
  store %struct.ref_array_item* %0, %struct.ref_array_item** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.atom_value** %2, %struct.atom_value*** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %10 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %11 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %10, i32 0, i32 0
  %12 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %13 = icmp ne %struct.atom_value* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %17 = call i64 @populate_value(%struct.ref_array_item* %15, %struct.strbuf* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %33

20:                                               ; preds = %14
  %21 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %22 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %21, i32 0, i32 0
  %23 = load %struct.atom_value*, %struct.atom_value** %22, align 8
  %24 = call i32 @fill_missing_values(%struct.atom_value* %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %27 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %26, i32 0, i32 0
  %28 = load %struct.atom_value*, %struct.atom_value** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %28, i64 %30
  %32 = load %struct.atom_value**, %struct.atom_value*** %8, align 8
  store %struct.atom_value* %31, %struct.atom_value** %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @populate_value(%struct.ref_array_item*, %struct.strbuf*) #1

declare dso_local i32 @fill_missing_values(%struct.atom_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
