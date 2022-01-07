; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_set_flags.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_ENOMEM = common dso_local global i32 0, align 4
@P_READ = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@real_page_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_set_flags(%struct.mem* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mem* %0, %struct.mem** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.mem*, %struct.mem** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.pt_entry* @mem_pt(%struct.mem* %24, i64 %25)
  %27 = icmp eq %struct.pt_entry* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @_ENOMEM, align 4
  store i32 %29, i32* %5, align 4
  br label %106

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %17

34:                                               ; preds = %17
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %100, %34
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %36
  %43 = load %struct.mem*, %struct.mem** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call %struct.pt_entry* @mem_pt(%struct.mem* %43, i64 %44)
  store %struct.pt_entry* %45, %struct.pt_entry** %12, align 8
  %46 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %47 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %51 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %13, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* @P_READ, align 4
  %57 = load i32, i32* @P_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %42
  %62 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %63 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %69 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %14, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i32, i32* @real_page_size, align 4
  %76 = sub nsw i32 %75, 1
  %77 = xor i32 %76, -1
  %78 = sext i32 %77 to i64
  %79 = and i64 %74, %78
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %14, align 8
  %81 = load i32, i32* @PROT_READ, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @P_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %61
  %87 = load i32, i32* @PROT_WRITE, align 4
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %61
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @real_page_size, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @mprotect(i8* %91, i32 %92, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 (...) @errno_map()
  store i32 %97, i32* %5, align 4
  br label %106

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %42
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %36

103:                                              ; preds = %36
  %104 = load %struct.mem*, %struct.mem** %6, align 8
  %105 = call i32 @mem_changed(%struct.mem* %104)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %96, %28
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i64) #1

declare dso_local i64 @mprotect(i8*, i32, i32) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @mem_changed(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
