; ModuleID = '/home/carl/AnghaBench/git/extr_decorate.c_insert_decoration.c'
source_filename = "/home/carl/AnghaBench/git/extr_decorate.c_insert_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoration = type { i32, i32, %struct.decoration_entry* }
%struct.decoration_entry = type { i8*, %struct.object* }
%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.decoration*, %struct.object*, i8*)* @insert_decoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insert_decoration(%struct.decoration* %0, %struct.object* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.decoration*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.decoration_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.decoration* %0, %struct.decoration** %5, align 8
  store %struct.object* %1, %struct.object** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.decoration*, %struct.decoration** %5, align 8
  %13 = getelementptr inbounds %struct.decoration, %struct.decoration* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.decoration*, %struct.decoration** %5, align 8
  %16 = getelementptr inbounds %struct.decoration, %struct.decoration* %15, i32 0, i32 2
  %17 = load %struct.decoration_entry*, %struct.decoration_entry** %16, align 8
  store %struct.decoration_entry* %17, %struct.decoration_entry** %9, align 8
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @hash_obj(%struct.object* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %58, %3
  %22 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %22, i64 %24
  %26 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %25, i32 0, i32 1
  %27 = load %struct.object*, %struct.object** %26, align 8
  %28 = icmp ne %struct.object* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %33, i32 0, i32 1
  %35 = load %struct.object*, %struct.object** %34, align 8
  %36 = load %struct.object*, %struct.object** %6, align 8
  %37 = icmp eq %struct.object* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %46, i64 %48
  %50 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %49, i32 0, i32 0
  store i8* %45, i8** %50, align 8
  %51 = load i8*, i8** %11, align 8
  store i8* %51, i8** %4, align 8
  br label %76

52:                                               ; preds = %29
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %52
  br label %21

59:                                               ; preds = %21
  %60 = load %struct.object*, %struct.object** %6, align 8
  %61 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %61, i64 %63
  %65 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %64, i32 0, i32 1
  store %struct.object* %60, %struct.object** %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.decoration_entry*, %struct.decoration_entry** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %67, i64 %69
  %71 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = load %struct.decoration*, %struct.decoration** %5, align 8
  %73 = getelementptr inbounds %struct.decoration, %struct.decoration* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i8* null, i8** %4, align 8
  br label %76

76:                                               ; preds = %59, %38
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @hash_obj(%struct.object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
