; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_handle_node.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_handle_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@node_ctx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@handle_node.empty_blob = internal constant i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [10 x i8] c"::empty::\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@NODEACT_DELETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"invalid dump: deletion node has copyfrom info, text, or properties\00", align 1
@NODEACT_REPLACE = common dso_local global i64 0, align 8
@NODEACT_ADD = common dso_local global i64 0, align 8
@NODEACT_CHANGE = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"invalid dump: directories cannot have text attached\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"invalid dump: root of tree is not a regular file\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"invalid dump: cannot modify a directory into a file\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"invalid dump: cannot modify a file into a directory\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid dump: adds node without text\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"invalid dump: Node-path block lacks Node-action\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_node() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  store i64 %7, i64* %1, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 1), align 8
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 2), align 4
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %14 = load i32, i32* @S_IFREG, align 4
  %15 = or i32 %14, 420
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %18 = load i64, i64* @NODEACT_DELETE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %0
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 8), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %20
  %30 = call i32 @die(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %33 = call i32 @fast_export_delete(i32* %32)
  br label %182

34:                                               ; preds = %0
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %36 = load i64, i64* @NODEACT_REPLACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %40 = call i32 @fast_export_delete(i32* %39)
  %41 = load i64, i64* @NODEACT_ADD, align 8
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 8), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 8), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 7, i32 0), align 8
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %49 = call i32 @fast_export_copy(i64 %46, i32 %47, i32* %48)
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %51 = load i64, i64* @NODEACT_ADD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @NODEACT_CHANGE, align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  br label %55

55:                                               ; preds = %53, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* @S_IFDIR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59, %56
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %67 = load i64, i64* @NODEACT_CHANGE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @S_IFDIR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  store i8* null, i8** %4, align 8
  br label %130

80:                                               ; preds = %69, %65
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %82 = load i64, i64* @NODEACT_CHANGE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %86 = call i8* @fast_export_read_path(i32* %85, i64* %6)
  store i8* %86, i8** %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @S_IFDIR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @S_IFDIR, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90, %84
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @S_IFDIR, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i64, i64* %1, align 8
  %102 = load i64, i64* @S_IFDIR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100, %96
  %107 = load i64, i64* %6, align 8
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %108 = load i64, i64* %6, align 8
  store i64 %108, i64* %5, align 8
  br label %129

109:                                              ; preds = %80
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 3), align 8
  %111 = load i64, i64* @NODEACT_ADD, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @S_IFDIR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i8* null, i8** %4, align 8
  br label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %4, align 8
  br label %124

122:                                              ; preds = %118
  %123 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %121
  br label %125

125:                                              ; preds = %124, %117
  br label %128

126:                                              ; preds = %109
  %127 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %125
  br label %129

129:                                              ; preds = %128, %106
  br label %130

130:                                              ; preds = %129, %79
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 6), align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* %1, align 8
  store i64 %137, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 1), align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (...) @read_props()
  br label %143

143:                                              ; preds = %141, %138
  br label %144

144:                                              ; preds = %143, %130
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @S_IFDIR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %182

149:                                              ; preds = %144
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @assert(i8* %150)
  %152 = load i8*, i8** %4, align 8
  %153 = icmp eq i8* %152, getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i8* null, i8** %4, align 8
  br label %155

155:                                              ; preds = %154, %149
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @fast_export_modify(i32* %159, i64 %160, i8* %161)
  br label %182

163:                                              ; preds = %155
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 5), align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %169 = call i32 @fast_export_modify(i32* %167, i64 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 2), align 4
  %172 = call i32 @fast_export_data(i64 %170, i32 %171, i32* @input)
  br label %182

173:                                              ; preds = %163
  %174 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 4, i32 0), align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %176 = call i32 @fast_export_modify(i32* %174, i64 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 0), align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_ctx, i32 0, i32 2), align 4
  %181 = call i32 @fast_export_blob_delta(i64 %177, i64 %178, i8* %179, i32 %180, i32* @input)
  br label %182

182:                                              ; preds = %173, %166, %158, %148, %31
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @fast_export_delete(i32*) #1

declare dso_local i32 @fast_export_copy(i64, i32, i32*) #1

declare dso_local i8* @fast_export_read_path(i32*, i64*) #1

declare dso_local i32 @read_props(...) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @fast_export_modify(i32*, i64, i8*) #1

declare dso_local i32 @fast_export_data(i64, i32, i32*) #1

declare dso_local i32 @fast_export_blob_delta(i64, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
