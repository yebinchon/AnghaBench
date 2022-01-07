; ModuleID = '/home/carl/AnghaBench/git/extr_decorate.c_lookup_decoration.c'
source_filename = "/home/carl/AnghaBench/git/extr_decorate.c_lookup_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoration = type { i32, %struct.decoration_entry* }
%struct.decoration_entry = type { i8*, %struct.object* }
%struct.object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lookup_decoration(%struct.decoration* %0, %struct.object* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.decoration*, align 8
  %5 = alloca %struct.object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.decoration_entry*, align 8
  store %struct.decoration* %0, %struct.decoration** %4, align 8
  store %struct.object* %1, %struct.object** %5, align 8
  %8 = load %struct.decoration*, %struct.decoration** %4, align 8
  %9 = getelementptr inbounds %struct.decoration, %struct.decoration* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.object*, %struct.object** %5, align 8
  %15 = load %struct.decoration*, %struct.decoration** %4, align 8
  %16 = getelementptr inbounds %struct.decoration, %struct.decoration* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hash_obj(%struct.object* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %49, %13
  %20 = load %struct.decoration*, %struct.decoration** %4, align 8
  %21 = getelementptr inbounds %struct.decoration, %struct.decoration* %20, i32 0, i32 1
  %22 = load %struct.decoration_entry*, %struct.decoration_entry** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %22, i64 %24
  store %struct.decoration_entry* %25, %struct.decoration_entry** %7, align 8
  %26 = load %struct.decoration_entry*, %struct.decoration_entry** %7, align 8
  %27 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %26, i32 0, i32 1
  %28 = load %struct.object*, %struct.object** %27, align 8
  %29 = load %struct.object*, %struct.object** %5, align 8
  %30 = icmp eq %struct.object* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.decoration_entry*, %struct.decoration_entry** %7, align 8
  %33 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %50

35:                                               ; preds = %19
  %36 = load %struct.decoration_entry*, %struct.decoration_entry** %7, align 8
  %37 = getelementptr inbounds %struct.decoration_entry, %struct.decoration_entry* %36, i32 0, i32 1
  %38 = load %struct.object*, %struct.object** %37, align 8
  %39 = icmp ne %struct.object* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %50

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.decoration*, %struct.decoration** %4, align 8
  %45 = getelementptr inbounds %struct.decoration, %struct.decoration* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %41
  br label %19

50:                                               ; preds = %40, %31, %12
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i32 @hash_obj(%struct.object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
