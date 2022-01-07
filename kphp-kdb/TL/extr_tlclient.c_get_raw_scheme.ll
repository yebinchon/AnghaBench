; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_get_raw_scheme.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_get_raw_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object*, %struct.tl_scheme_object* }

@tlso_list = common dso_local global i64 0, align 8
@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8
@tlso_str = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"raw_scheme:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tl_scheme_object*)* @get_raw_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_raw_scheme(%struct.tl_scheme_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tl_scheme_object*, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca %struct.tl_scheme_object*, align 8
  %6 = alloca %struct.tl_scheme_object*, align 8
  %7 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %3, align 8
  %8 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %9 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @tlso_list, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %78

14:                                               ; preds = %1
  %15 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %16 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %18, align 8
  store %struct.tl_scheme_object* %19, %struct.tl_scheme_object** %4, align 8
  %20 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %21 = icmp eq %struct.tl_scheme_object* %20, @obj_empty_list
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %78

23:                                               ; preds = %14
  %24 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %25 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @tlso_list, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %32 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %34, align 8
  store %struct.tl_scheme_object* %35, %struct.tl_scheme_object** %5, align 8
  %36 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %37 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @tlso_str, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %43 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %78

49:                                               ; preds = %41, %23
  %50 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %51 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %53, align 8
  store %struct.tl_scheme_object* %54, %struct.tl_scheme_object** %6, align 8
  %55 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  %56 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @tlso_list, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i8* null, i8** %2, align 8
  br label %78

61:                                               ; preds = %49
  %62 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  %63 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %65, align 8
  store %struct.tl_scheme_object* %66, %struct.tl_scheme_object** %7, align 8
  %67 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %68 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @tlso_str, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i8* null, i8** %2, align 8
  br label %78

73:                                               ; preds = %61
  %74 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %75 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %73, %72, %60, %48, %22, %13
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
