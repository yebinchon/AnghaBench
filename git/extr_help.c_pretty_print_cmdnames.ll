; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_pretty_print_cmdnames.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_pretty_print_cmdnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.column_options = type { i8*, i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@COL_ENABLE_MASK = common dso_local global i32 0, align 4
@COL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*, i32)* @pretty_print_cmdnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print_cmdnames(%struct.cmdnames* %0, i32 %1) #0 {
  %3 = alloca %struct.cmdnames*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list, align 4
  %6 = alloca %struct.column_options, align 8
  %7 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %12 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %17 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @string_list_append(%struct.string_list* %5, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @COL_ENABLE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @COL_ENABLED, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = call i32 @memset(%struct.column_options* %6, i32 0, i32 16)
  %37 = getelementptr inbounds %struct.column_options, %struct.column_options* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.column_options, %struct.column_options* %6, i32 0, i32 1
  store i32 2, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @print_columns(%struct.string_list* %5, i32 %39, %struct.column_options* %6)
  %41 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @memset(%struct.column_options*, i32, i32) #2

declare dso_local i32 @print_columns(%struct.string_list*, i32, %struct.column_options*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
