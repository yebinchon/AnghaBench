; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_tag_values.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_tag_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.atom_value = type { i8* }
%struct.object = type { i32 }
%struct.tag = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@used_atom_cnt = common dso_local global i32 0, align 4
@used_atom = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_value*, i32, %struct.object*)* @grab_tag_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_tag_values(%struct.atom_value* %0, i32 %1, %struct.object* %2) #0 {
  %4 = alloca %struct.atom_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tag*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atom_value*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.object* %2, %struct.object** %6, align 8
  %11 = load %struct.object*, %struct.object** %6, align 8
  %12 = bitcast %struct.object* %11 to %struct.tag*
  store %struct.tag* %12, %struct.tag** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %97, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @used_atom_cnt, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @used_atom, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %24, i64 %26
  store %struct.atom_value* %27, %struct.atom_value** %10, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %97

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.tag*, %struct.tag** %8, align 8
  %52 = getelementptr inbounds %struct.tag, %struct.tag* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @xstrdup(i32 %53)
  %55 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %56 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %96

57:                                               ; preds = %46
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = load %struct.tag*, %struct.tag** %8, align 8
  %63 = getelementptr inbounds %struct.tag, %struct.tag* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.tag*, %struct.tag** %8, align 8
  %68 = getelementptr inbounds %struct.tag, %struct.tag* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @type_name(i32 %71)
  %73 = call i8* @xstrdup(i32 %72)
  %74 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %75 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %95

76:                                               ; preds = %61, %57
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = load %struct.tag*, %struct.tag** %8, align 8
  %82 = getelementptr inbounds %struct.tag, %struct.tag* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.tag*, %struct.tag** %8, align 8
  %87 = getelementptr inbounds %struct.tag, %struct.tag* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @oid_to_hex(i32* %89)
  %91 = call i8* @xstrdup(i32 %90)
  %92 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %93 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %85, %80, %76
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %50
  br label %97

97:                                               ; preds = %96, %39
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %13

100:                                              ; preds = %13
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
