; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_add_trailer_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_add_trailer_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trailer_item = type { i8*, i8*, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trailer_item* (%struct.list_head*, i8*, i8*)* @add_trailer_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trailer_item* @add_trailer_item(%struct.list_head* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trailer_item*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.trailer_item* @xcalloc(i32 24, i32 1)
  store %struct.trailer_item* %8, %struct.trailer_item** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %11 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %14 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %16 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %15, i32 0, i32 2
  %17 = load %struct.list_head*, %struct.list_head** %4, align 8
  %18 = call i32 @list_add_tail(i32* %16, %struct.list_head* %17)
  %19 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  ret %struct.trailer_item* %19
}

declare dso_local %struct.trailer_item* @xcalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
