; ModuleID = '/home/carl/AnghaBench/git/extr_decorate.c_grow_decoration.c'
source_filename = "/home/carl/AnghaBench/git/extr_decorate.c_grow_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoration = type { i32, i64, %struct.decoration_entry* }
%struct.decoration_entry = type { i8*, %struct.object* }
%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoration*)* @grow_decoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_decoration(%struct.decoration* %0) #0 {
  %2 = alloca %struct.decoration*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.decoration_entry*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  store %struct.decoration* %0, %struct.decoration** %2, align 8
  %8 = load %struct.decoration*, %struct.decoration** %2, align 8
  %9 = getelementptr inbounds %struct.decoration, %struct.decoration* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.decoration*, %struct.decoration** %2, align 8
  %12 = getelementptr inbounds %struct.decoration, %struct.decoration* %11, i32 0, i32 2
  %13 = load %struct.decoration_entry*, %struct.decoration_entry** %12, align 8
  store %struct.decoration_entry* %13, %struct.decoration_entry** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1000
  %16 = mul nsw i32 %15, 3
  %17 = sdiv i32 %16, 2
  %18 = load %struct.decoration*, %struct.decoration** %2, align 8
  %19 = getelementptr inbounds %struct.decoration, %struct.decoration* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.decoration*, %struct.decoration** %2, align 8
  %21 = getelementptr inbounds %struct.decoration, %struct.decoration* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.decoration_entry* @xcalloc(i32 %22, i32 16)
  %24 = load %struct.decoration*, %struct.decoration** %2, align 8
  %25 = getelementptr inbounds %struct.decoration, %struct.decoration* %24, i32 0, i32 2
  store %struct.decoration_entry* %23, %struct.decoration_entry** %25, align 8
  %26 = load %struct.decoration*, %struct.decoration** %2, align 8
  %27 = getelementptr inbounds %struct.decoration, %struct.decoration* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %53, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load %struct.decoration_entry*, %struct.decoration_entry** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %33, i64 %35
  %37 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %36, i32 0, i32 1
  %38 = load %struct.object*, %struct.object** %37, align 8
  store %struct.object* %38, %struct.object** %6, align 8
  %39 = load %struct.decoration_entry*, %struct.decoration_entry** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.decoration*, %struct.decoration** %2, align 8
  %50 = load %struct.object*, %struct.object** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @insert_decoration(%struct.decoration* %49, %struct.object* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load %struct.decoration_entry*, %struct.decoration_entry** %5, align 8
  %58 = call i32 @free(%struct.decoration_entry* %57)
  ret void
}

declare dso_local %struct.decoration_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @insert_decoration(%struct.decoration*, %struct.object*, i8*) #1

declare dso_local i32 @free(%struct.decoration_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
