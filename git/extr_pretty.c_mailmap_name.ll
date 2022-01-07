; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_mailmap_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_mailmap_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64 }

@mailmap_name.mail_map = internal global %struct.string_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8**, i64*)* @mailmap_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mailmap_name(i8** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.string_list*, %struct.string_list** @mailmap_name.mail_map, align 8
  %10 = icmp ne %struct.string_list* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = call %struct.string_list* @xcalloc(i32 1, i32 8)
  store %struct.string_list* %12, %struct.string_list** @mailmap_name.mail_map, align 8
  %13 = load %struct.string_list*, %struct.string_list** @mailmap_name.mail_map, align 8
  %14 = call i32 @read_mailmap(%struct.string_list* %13, i32* null)
  br label %15

15:                                               ; preds = %11, %4
  %16 = load %struct.string_list*, %struct.string_list** @mailmap_name.mail_map, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.string_list*, %struct.string_list** @mailmap_name.mail_map, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = call i64 @map_user(%struct.string_list* %21, i8** %22, i64* %23, i8** %24, i64* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi i1 [ false, %15 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.string_list* @xcalloc(i32, i32) #1

declare dso_local i32 @read_mailmap(%struct.string_list*, i32*) #1

declare dso_local i64 @map_user(%struct.string_list*, i8**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
