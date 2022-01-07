; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_dnslabel_table_add.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_dnslabel_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnslabel_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@MAX_LABELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnslabel_table*, i8*, i32)* @dnslabel_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnslabel_table_add(%struct.dnslabel_table* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dnslabel_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dnslabel_table* %0, %struct.dnslabel_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dnslabel_table*, %struct.dnslabel_table** %5, align 8
  %11 = getelementptr inbounds %struct.dnslabel_table, %struct.dnslabel_table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_LABELS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @mm_strdup(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %44

22:                                               ; preds = %16
  %23 = load %struct.dnslabel_table*, %struct.dnslabel_table** %5, align 8
  %24 = getelementptr inbounds %struct.dnslabel_table, %struct.dnslabel_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = trunc i64 %25 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.dnslabel_table*, %struct.dnslabel_table** %5, align 8
  %30 = getelementptr inbounds %struct.dnslabel_table, %struct.dnslabel_table* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %28, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dnslabel_table*, %struct.dnslabel_table** %5, align 8
  %38 = getelementptr inbounds %struct.dnslabel_table, %struct.dnslabel_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %36, i32* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %22, %21, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i8* @mm_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
