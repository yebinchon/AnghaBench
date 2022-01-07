; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_add_one_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_add_one_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_info = type { i32 }
%struct.object = type { i32 }

@REF_ISSYMREF = common dso_local global i32 0, align 4
@REF_ISBROKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"symbolic ref is dangling: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @add_one_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_one_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rev_info*, align 8
  %11 = alloca %struct.object*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.rev_info*
  store %struct.rev_info* %13, %struct.rev_info** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REF_ISSYMREF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @REF_ISBROKEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %5, align 4
  br label %33

26:                                               ; preds = %18, %4
  %27 = load %struct.object_id*, %struct.object_id** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.object* @parse_object_or_die(%struct.object_id* %27, i8* %28)
  store %struct.object* %29, %struct.object** %11, align 8
  %30 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %31 = load %struct.object*, %struct.object** %11, align 8
  %32 = call i32 @add_pending_object(%struct.rev_info* %30, %struct.object* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
