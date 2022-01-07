; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_expanded_map.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_expanded_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.refspec_item = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.ref*, %struct.refspec_item*)* @get_expanded_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_expanded_map(%struct.ref* %0, %struct.refspec_item* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.refspec_item*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  store %struct.refspec_item* %1, %struct.refspec_item** %4, align 8
  store %struct.ref* null, %struct.ref** %6, align 8
  store %struct.ref** %6, %struct.ref*** %7, align 8
  %10 = load %struct.ref*, %struct.ref** %3, align 8
  store %struct.ref* %10, %struct.ref** %5, align 8
  br label %11

11:                                               ; preds = %61, %2
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  %13 = icmp ne %struct.ref* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  store i8* null, i8** %8, align 8
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strchr(i32 %17, i8 signext 94)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %61

21:                                               ; preds = %14
  %22 = load %struct.refspec_item*, %struct.refspec_item** %4, align 8
  %23 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ref*, %struct.ref** %5, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.refspec_item*, %struct.refspec_item** %4, align 8
  %29 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @match_name_with_pattern(i32 %24, i32 %27, i32 %30, i8** %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %21
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @ignore_symref_update(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = load %struct.ref*, %struct.ref** %5, align 8
  %39 = call %struct.ref* @copy_ref(%struct.ref* %38)
  store %struct.ref* %39, %struct.ref** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call %struct.TYPE_2__* @alloc_ref(i8* %40)
  %42 = load %struct.ref*, %struct.ref** %9, align 8
  %43 = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.refspec_item*, %struct.refspec_item** %4, align 8
  %45 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.ref*, %struct.ref** %9, align 8
  %50 = getelementptr inbounds %struct.ref, %struct.ref* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %37
  %54 = load %struct.ref*, %struct.ref** %9, align 8
  %55 = load %struct.ref**, %struct.ref*** %7, align 8
  store %struct.ref* %54, %struct.ref** %55, align 8
  %56 = load %struct.ref*, %struct.ref** %9, align 8
  %57 = getelementptr inbounds %struct.ref, %struct.ref* %56, i32 0, i32 0
  store %struct.ref** %57, %struct.ref*** %7, align 8
  br label %58

58:                                               ; preds = %53, %33, %21
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %58, %20
  %62 = load %struct.ref*, %struct.ref** %5, align 8
  %63 = getelementptr inbounds %struct.ref, %struct.ref* %62, i32 0, i32 0
  %64 = load %struct.ref*, %struct.ref** %63, align 8
  store %struct.ref* %64, %struct.ref** %5, align 8
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.ref*, %struct.ref** %6, align 8
  ret %struct.ref* %66
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i64 @match_name_with_pattern(i32, i32, i32, i8**) #1

declare dso_local i32 @ignore_symref_update(i8*) #1

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #1

declare dso_local %struct.TYPE_2__* @alloc_ref(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
