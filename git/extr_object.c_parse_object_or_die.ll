; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_parse_object_or_die.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_parse_object_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to parse object: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @parse_object_or_die(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @the_repository, align 4
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = call %struct.object* @parse_object(i32 %7, %struct.object_id* %8)
  store %struct.object* %9, %struct.object** %6, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.object*, %struct.object** %6, align 8
  store %struct.object* %13, %struct.object** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.object_id*, %struct.object_id** %4, align 8
  %22 = call i8* @oid_to_hex(%struct.object_id* %21)
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i8* [ %19, %18 ], [ %22, %20 ]
  %25 = call i32 @die(i32 %15, i8* %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = load %struct.object*, %struct.object** %3, align 8
  ret %struct.object* %27
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
