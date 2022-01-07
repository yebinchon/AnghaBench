; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_delete_relative.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_delete_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32, i32 }
%struct.relative = type { i32, i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.connection* }
%struct.connection = type { i64, %struct.connection* }
%struct.TYPE_9__ = type { i64, %struct.connection* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"delete_relative force = %d, x->type = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_16__* null, align 8
@cr_ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"delete_relative: done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_relative(%struct.relative* %0, i32 %1) #0 {
  %3 = alloca %struct.relative*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.connection*, align 8
  store %struct.relative* %0, %struct.relative** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.relative*, %struct.relative** %3, align 8
  %8 = call i32 @assert(%struct.relative* %7)
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 3
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.relative*, %struct.relative** %3, align 8
  %15 = getelementptr inbounds %struct.relative, %struct.relative* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.relative*, %struct.relative** %3, align 8
  %20 = call %struct.connection* @get_relative_connection(%struct.relative* %19)
  store %struct.connection* %20, %struct.connection** %5, align 8
  %21 = load %struct.relative*, %struct.relative** %3, align 8
  %22 = getelementptr inbounds %struct.relative, %struct.relative* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load %struct.relative*, %struct.relative** %3, align 8
  %27 = getelementptr inbounds %struct.relative, %struct.relative* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.connection*, %struct.connection** %31, align 8
  store %struct.connection* %32, %struct.connection** %6, align 8
  br label %33

33:                                               ; preds = %42, %25
  %34 = load %struct.connection*, %struct.connection** %6, align 8
  %35 = load %struct.relative*, %struct.relative** %3, align 8
  %36 = getelementptr inbounds %struct.relative, %struct.relative* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = bitcast %struct.TYPE_15__* %39 to %struct.connection*
  %41 = icmp ne %struct.connection* %34, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.connection*, %struct.connection** %6, align 8
  %44 = call i32 @fail_connection(%struct.connection* %43, i32 -1)
  %45 = load %struct.connection*, %struct.connection** %6, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 1
  %47 = load %struct.connection*, %struct.connection** %46, align 8
  store %struct.connection* %47, %struct.connection** %6, align 8
  br label %33

48:                                               ; preds = %33
  br label %75

49:                                               ; preds = %18
  %50 = load %struct.relative*, %struct.relative** %3, align 8
  %51 = getelementptr inbounds %struct.relative, %struct.relative* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.connection*, %struct.connection** %53, align 8
  store %struct.connection* %54, %struct.connection** %6, align 8
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = icmp ne %struct.connection* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.connection*, %struct.connection** %6, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.relative*, %struct.relative** %3, align 8
  %62 = getelementptr inbounds %struct.relative, %struct.relative* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store %struct.connection* null, %struct.connection** %6, align 8
  br label %68

68:                                               ; preds = %67, %57, %49
  %69 = load %struct.connection*, %struct.connection** %6, align 8
  %70 = icmp ne %struct.connection* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.connection*, %struct.connection** %6, align 8
  %73 = call i32 @fail_connection(%struct.connection* %72, i32 -1)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %48
  %76 = load %struct.relative*, %struct.relative** %3, align 8
  %77 = getelementptr inbounds %struct.relative, %struct.relative* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.relative*, %struct.relative** %3, align 8
  %82 = getelementptr inbounds %struct.relative, %struct.relative* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = call i32 @destroy_target(%struct.TYPE_15__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** @STATS, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %98

92:                                               ; preds = %75
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** @STATS, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %80
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** @STATS, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.relative*, %struct.relative** %3, align 8
  %104 = getelementptr inbounds %struct.relative, %struct.relative* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.relative*, %struct.relative** %3, align 8
  %110 = getelementptr inbounds %struct.relative, %struct.relative* %109, i32 0, i32 3
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load %struct.relative*, %struct.relative** %3, align 8
  %113 = getelementptr inbounds %struct.relative, %struct.relative* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %115, align 8
  %116 = load %struct.relative*, %struct.relative** %3, align 8
  %117 = getelementptr inbounds %struct.relative, %struct.relative* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load %struct.relative*, %struct.relative** %3, align 8
  %120 = getelementptr inbounds %struct.relative, %struct.relative* %119, i32 0, i32 3
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %122, align 8
  %123 = load %struct.relative*, %struct.relative** %3, align 8
  %124 = call i32 @zfree(%struct.relative* %123, i32 56)
  %125 = load %struct.connection*, %struct.connection** %5, align 8
  %126 = icmp ne %struct.connection* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %98
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.connection*, %struct.connection** %5, align 8
  %132 = call i64 @server_check_ready(%struct.connection* %131)
  %133 = load i64, i64* @cr_ok, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.connection*, %struct.connection** %5, align 8
  %137 = call i32 @rpc_send_divorce(%struct.connection* %136)
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %98
  %141 = load i32, i32* @verbosity, align 4
  %142 = icmp sge i32 %141, 6
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %140
  ret void
}

declare dso_local i32 @assert(%struct.relative*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.connection* @get_relative_connection(%struct.relative*) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @destroy_target(%struct.TYPE_15__*) #1

declare dso_local i32 @zfree(%struct.relative*, i32) #1

declare dso_local i64 @server_check_ready(%struct.connection*) #1

declare dso_local i32 @rpc_send_divorce(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
