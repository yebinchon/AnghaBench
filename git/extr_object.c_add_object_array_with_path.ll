; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_add_object_array_with_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_add_object_array_with_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.object_array = type { i32, i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i32, i32*, i32*, %struct.object* }

@object_array_slopbuf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_object_array_with_path(%struct.object* %0, i8* %1, %struct.object_array* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_array_entry*, align 8
  %14 = alloca %struct.object_array_entry*, align 8
  store %struct.object* %0, %struct.object** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_array* %2, %struct.object_array** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.object_array*, %struct.object_array** %8, align 8
  %16 = getelementptr inbounds %struct.object_array, %struct.object_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.object_array*, %struct.object_array** %8, align 8
  %19 = getelementptr inbounds %struct.object_array, %struct.object_array* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.object_array*, %struct.object_array** %8, align 8
  %22 = getelementptr inbounds %struct.object_array, %struct.object_array* %21, i32 0, i32 2
  %23 = load %struct.object_array_entry*, %struct.object_array_entry** %22, align 8
  store %struct.object_array_entry* %23, %struct.object_array_entry** %13, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %28, 32
  %30 = mul i32 %29, 2
  store i32 %30, i32* %12, align 4
  %31 = load %struct.object_array_entry*, %struct.object_array_entry** %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @REALLOC_ARRAY(%struct.object_array_entry* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.object_array*, %struct.object_array** %8, align 8
  %36 = getelementptr inbounds %struct.object_array, %struct.object_array* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.object_array_entry*, %struct.object_array_entry** %13, align 8
  %38 = load %struct.object_array*, %struct.object_array** %8, align 8
  %39 = getelementptr inbounds %struct.object_array, %struct.object_array* %38, i32 0, i32 2
  store %struct.object_array_entry* %37, %struct.object_array_entry** %39, align 8
  br label %40

40:                                               ; preds = %27, %5
  %41 = load %struct.object_array_entry*, %struct.object_array_entry** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %41, i64 %43
  store %struct.object_array_entry* %44, %struct.object_array_entry** %14, align 8
  %45 = load %struct.object*, %struct.object** %6, align 8
  %46 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %47 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %46, i32 0, i32 3
  store %struct.object* %45, %struct.object** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %52 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %68

53:                                               ; preds = %40
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** @object_array_slopbuf, align 8
  %59 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %60 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  br label %67

61:                                               ; preds = %53
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @xstrdup(i8* %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %66 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %71 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = call i8* @xstrdup(i8* %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %79 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.object_array_entry*, %struct.object_array_entry** %14, align 8
  %82 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load %struct.object_array*, %struct.object_array** %8, align 8
  %87 = getelementptr inbounds %struct.object_array, %struct.object_array* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(%struct.object_array_entry*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
