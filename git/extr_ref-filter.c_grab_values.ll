; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_values.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_value = type { i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tagger\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Eh?  Object of type %d?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_value*, i32, %struct.object*, i8*)* @grab_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_values(%struct.atom_value* %0, i32 %1, %struct.object* %2, i8* %3) #0 {
  %5 = alloca %struct.atom_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object*, align 8
  %8 = alloca i8*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.object* %2, %struct.object** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.object*, %struct.object** %7, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 130, label %25
    i32 128, label %42
    i32 131, label %43
  ]

12:                                               ; preds = %4
  %13 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.object*, %struct.object** %7, align 8
  %16 = call i32 @grab_tag_values(%struct.atom_value* %13, i32 %14, %struct.object* %15)
  %17 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @grab_sub_body_contents(%struct.atom_value* %17, i32 %18, i8* %19)
  %21 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @grab_person(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.atom_value* %21, i32 %22, i8* %23)
  br label %49

25:                                               ; preds = %4
  %26 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.object*, %struct.object** %7, align 8
  %29 = call i32 @grab_commit_values(%struct.atom_value* %26, i32 %27, %struct.object* %28)
  %30 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @grab_sub_body_contents(%struct.atom_value* %30, i32 %31, i8* %32)
  %34 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @grab_person(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.atom_value* %34, i32 %35, i8* %36)
  %38 = load %struct.atom_value*, %struct.atom_value** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @grab_person(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.atom_value* %38, i32 %39, i8* %40)
  br label %49

42:                                               ; preds = %4
  br label %49

43:                                               ; preds = %4
  br label %49

44:                                               ; preds = %4
  %45 = load %struct.object*, %struct.object** %7, align 8
  %46 = getelementptr inbounds %struct.object, %struct.object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %43, %42, %25, %12
  ret void
}

declare dso_local i32 @grab_tag_values(%struct.atom_value*, i32, %struct.object*) #1

declare dso_local i32 @grab_sub_body_contents(%struct.atom_value*, i32, i8*) #1

declare dso_local i32 @grab_person(i8*, %struct.atom_value*, i32, i8*) #1

declare dso_local i32 @grab_commit_values(%struct.atom_value*, i32, %struct.object*) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
