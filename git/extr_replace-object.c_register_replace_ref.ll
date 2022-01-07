; ModuleID = '/home/carl/AnghaBench/git/extr_replace-object.c_register_replace_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_replace-object.c_register_replace_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }
%struct.replace_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"bad replace ref name: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"duplicate replace ref: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.object_id*, i32, i8*)* @register_replace_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_replace_ref(%struct.repository* %0, i8* %1, %struct.object_id* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.replace_object*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  br label %24

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i8* [ %21, %19 ], [ %23, %22 ]
  store i8* %25, i8** %13, align 8
  %26 = call %struct.replace_object* @xmalloc(i32 8)
  store %struct.replace_object* %26, %struct.replace_object** %14, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.replace_object*, %struct.replace_object** %14, align 8
  %29 = getelementptr inbounds %struct.replace_object, %struct.replace_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i64 @get_oid_hex(i8* %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.replace_object*, %struct.replace_object** %14, align 8
  %35 = call i32 @free(%struct.replace_object* %34)
  %36 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @warning(i32 %36, i8* %37)
  store i32 0, i32* %6, align 4
  br label %57

39:                                               ; preds = %24
  %40 = load %struct.replace_object*, %struct.replace_object** %14, align 8
  %41 = getelementptr inbounds %struct.replace_object, %struct.replace_object* %40, i32 0, i32 0
  %42 = load %struct.object_id*, %struct.object_id** %9, align 8
  %43 = call i32 @oidcpy(i32* %41, %struct.object_id* %42)
  %44 = load %struct.repository*, %struct.repository** %7, align 8
  %45 = getelementptr inbounds %struct.repository, %struct.repository* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.replace_object*, %struct.replace_object** %14, align 8
  %50 = call i64 @oidmap_put(i32 %48, %struct.replace_object* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @die(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %39
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.replace_object* @xmalloc(i32) #1

declare dso_local i64 @get_oid_hex(i8*, i32*) #1

declare dso_local i32 @free(%struct.replace_object*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i64 @oidmap_put(i32, %struct.replace_object*) #1

declare dso_local i32 @die(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
