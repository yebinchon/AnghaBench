; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_mark_our_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_mark_our_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i32 }

@HIDDEN_REF = common dso_local global i32 0, align 4
@OUR_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.object_id*)* @mark_our_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_our_ref(i8* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %9 = load %struct.object_id*, %struct.object_id** %7, align 8
  %10 = call %struct.object* @lookup_unknown_object(%struct.object_id* %9)
  store %struct.object* %10, %struct.object** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @ref_is_hidden(i8* %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @HIDDEN_REF, align 4
  %17 = load %struct.object*, %struct.object** %8, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  store i32 1, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @OUR_REF, align 4
  %23 = load %struct.object*, %struct.object** %8, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.object* @lookup_unknown_object(%struct.object_id*) #1

declare dso_local i64 @ref_is_hidden(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
